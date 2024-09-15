import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '/styles/sign_up_style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _selectedRole = 'Customer'; // Default role
  Position? _currentPosition;
  LatLng? _selectedLocation; // Store selected location

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error('Location permissions are denied.');
      }
    }

    _currentPosition = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up', style: kAppBarTextStyle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('JAGUAR', style: kTitleTextStyle),
            const SizedBox(height: 40),
            _buildRoleDropdown(),
            const SizedBox(height: 30),
            if (_selectedRole == 'Arena Manager') _buildArenaManagerForm(),
            if (_selectedRole == 'Customer') _buildCustomerForm(),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              style: kButtonStyle,
              child: const Text('Sign Up', style: kButtonTextStyle),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                context.go('/login');
              },
              child: const Text('Already have an account? Login',
                  style: kLinkTextStyle),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleDropdown() {
    return DropdownButton<String>(
      value: _selectedRole,
      items: ['Customer', 'Arena Manager']
          .map((role) => DropdownMenuItem(
                value: role,
                child: Text(role),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          _selectedRole = value!;
        });
      },
      hint: const Text('Select your role'),
    );
  }

  Widget _buildArenaManagerForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextField('Arena Name'),
        const SizedBox(height: 20),
        _buildLocationField(), // Google Map and current location picker for Arena Manager
        const SizedBox(height: 20),
        _buildSportDropdown(),
        const SizedBox(height: 20),
        _buildTextField('Manager Name'),
        const SizedBox(height: 20),
        _buildTextField('Manager Phone Number'),
        const SizedBox(height: 20),
        _buildTextField('Manager CNIC'),
        const SizedBox(height: 20),
        _buildTextField('Manager Email'),
        const SizedBox(height: 20),
        _buildPasswordFields(),
      ],
    );
  }

  Widget _buildCustomerForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextField('Name'),
        const SizedBox(height: 20),
        _buildTextField('Email'),
        const SizedBox(height: 20),
        _buildPasswordFields(),
        const SizedBox(height: 20),
        _buildLocationField(), // Reuse the same location field for Customer
        const SizedBox(height: 20),
        _buildSportDropdown(),
      ],
    );
  }

  Widget _buildTextField(String label) {
    return TextField(
      decoration: kInputDecoration.copyWith(labelText: label),
    );
  }

  Widget _buildPasswordFields() {
    return Column(
      children: [
        TextField(
          decoration: kInputDecoration.copyWith(labelText: 'Password'),
          obscureText: true,
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: kInputDecoration.copyWith(labelText: 'Confirm Password'),
          obscureText: true,
        ),
      ],
    );
  }

  Widget _buildLocationField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_currentPosition != null
            ? 'Lat: ${_currentPosition!.latitude}, Long: ${_currentPosition!.longitude}'
            : 'Fetching location...'),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            await _determinePosition();
            setState(() {});
          },
          child: const Text('Get Current Location'),
        ),
        const SizedBox(height: 20),
        if (_selectedLocation != null)
          Text(
              'Selected Location: ${_selectedLocation!.latitude}, ${_selectedLocation!.longitude}'),
        ElevatedButton(
          onPressed: () {
            _showGoogleMap(context); // Show Google Map to select location
          },
          child: const Text('Pick Location from Map'),
        ),
      ],
    );
  }

  Widget _buildSportDropdown() {
    return DropdownButton<String>(
      items: ['Futsal (5-A side)', 'Futsal (7-A side)', 'Cricket']
          .map((sport) => DropdownMenuItem(
                value: sport,
                child: Text(sport),
              ))
          .toList(),
      onChanged: (value) {
        // Handle selected sport
      },
      hint: const Text('Select Sport'),
    );
  }

  Future<void> _showGoogleMap(BuildContext context) async {
    final LatLng? result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MapScreen(),
      ),
    );
    if (result != null) {
      setState(() {
        _selectedLocation = result;
      });
    }
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng? _pickedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick a Location'),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(-33.8688, 151.2093), // Sydney default location
          zoom: 14,
        ),
        onTap: (position) {
          setState(() {
            _pickedLocation = position;
          });
        },
        markers: _pickedLocation != null
            ? {
                Marker(
                  markerId: const MarkerId('pickedLocation'),
                  position: _pickedLocation!,
                ),
              }
            : {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, _pickedLocation);
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
