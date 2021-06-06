# Micro Mobile Package

Package for building Flutter mobile applications with micro mobile architecture

### Quick Start

In the main application of the project import micro application as packages in `pubspec.yaml`.

```
payments:
    git:
      url: git://github.com/Crepiks/psb-payments

  profile:
    git:
      url: git://github.com/Crepiks/psb-profile
```

Import `micro_mobile` package.

```
micro_mobile:
    git:
      url: git://github.com/Crepiks/flutter-micro-mobile
```

Register events in the constructur of the App.

```
store.registerEvent('TRANSACTION_ADD');
store.registerEvent('NAVIGATE_HOME');
store.registerEvent('NAVIGATE_PROFILE');
```

Add listener for the particular event.

```
store.addEventListener('TRANSACTION_ADD', (Object payload) {
    print('TRANSACTION_ADD');
});
```

Emit the event.

```
store.emit('TRANSACTION_ADD', payload);
```

While developing micro mobile application independently the store must be configured in the `main.dart` file. The events must be registered in the constructor of the App.

We strongly recommend to describe all events and payloads in the main application, but if you choose you can register and emit events directly from micro application.
