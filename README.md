How To Set Up Project:
1. Set up Dart/Flutter sdk.
2. Set up Docker.
3. Run "dart pub global activate serverpod_cli" command in terminal.
4. Open our project and go to the demo_server file in terminal.
5. Run "serverpod generate" command in terminal.
6. Run "dart pub get" command in demo_client, demo_flutter and demo_server.
7. Go back to demo_server and run "docker compose up --build --detach" command in terminal.
8. To run the server, enter "dart bin/main.dart --apply-migrations" command in demo_server.
9. After running the server, you can run the emulator.

For more information:
https://docs.serverpod.dev/
https://docs.serverpod.dev/get-started
