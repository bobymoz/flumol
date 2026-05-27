import 'package:flutter/material.dart';

class GopeedTheme {
  // Criando a cor principal estilo "Stripe" (Azul/Roxo moderno)
  static const _fluxPrimaryValue = 0xFF6366F1;
  static const _fluxPrimary = MaterialColor(
    _fluxPrimaryValue,
    <int, Color>{
      50: Color(0xFFEEEEFF),
      100: Color(0xFFD4D4FF),
      200: Color(0xFFB5B6FF),
      300: Color(0xFF9698FF),
      400: Color(0xFF7E80FF),
      500: Color(_fluxPrimaryValue),
      600: Color(0xFF5B5EE6),
      700: Color(0xFF5153D6),
      800: Color(0xFF4749C6),
      900: Color(0xFF3536A8),
    },
  );

  // Tema Claro (Minimalista, Fundo Branco, Sombras Suaves e Cantos Arredondados)
  static final light = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primarySwatch: _fluxPrimary,
    scaffoldBackgroundColor: const Color(0xFFF9FAFB), // Fundo quase branco, super limpo
    
    // Deixando o topo invisível e alinhado
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0, // Sem aquela linha dura separando o topo
      iconTheme: IconThemeData(color: Colors.black87),
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    ),
    
    // Cards flutuantes com sombras suaves
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.08), // Sombra premium e suave
      shape: RoundedRectangleBinding(
        borderRadius: BorderRadius.circular(16), // Cantos bem arredondados
      ),
    ),
    
    // Botões arredondados e sem sombra
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color(_fluxPrimaryValue),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBinding(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      ),
    ),
  );

  // Tema Escuro (Apenas estruturado para não dar erro se o celular do usuário estiver no modo noturno)
  static final dark = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    primarySwatch: _fluxPrimary,
    cardTheme: CardTheme(
      shape: RoundedRectangleBinding(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBinding(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
