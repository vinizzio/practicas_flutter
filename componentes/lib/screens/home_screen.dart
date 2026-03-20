import 'package:componentes/screens/filas_screen.dart';
import 'package:componentes/screens/imagnes_screen..dart';
import 'package:componentes/screens/tablas_screen.dart';
import 'package:flutter/material.dart';
import 'package:componentes/screens/columns_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFF0D47A1),
        title: const Text(
          'Componentes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildMenuCard(
              context: context,
              title: 'Columnas',
              subtitle: 'Muestra cómo se construyen las columnas en Flutter.',
              icon: Icons.view_column_outlined,
              iconColor: const Color(0xFF0D47A1),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnsScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              context: context,
              title: 'Filas',
              subtitle: 'Muestra cómo se construyen las filas en Flutter.',
              icon: Icons.view_stream_outlined,
              iconColor: const Color(0xFF1565C0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FilasScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              context: context,
              title: 'Imágenes',
              subtitle: 'Muestra cómo se visualizan imágenes en Flutter.',
              icon: Icons.image_outlined,
              iconColor: const Color(0xFF1976D2),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImagenesScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuCard(
              context: context,
              title: 'Tablas',
              subtitle: 'Muestra cómo se construyen tablas en Flutter.',
              icon: Icons.table_chart_outlined,
              iconColor: const Color(0xFF1E88E5),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TablasScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      // 🔻 FOOTER MÁS GRANDE E INSTITUCIONAL
      bottomNavigationBar: Container(
        color: const Color(0xFF0D47A1),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Nombre del sistema
            const Text(
              'Componentes Flutter',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: 0.5,
              ),
            ),

            const SizedBox(height: 6),

            // Línea divisoria
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.white24,
            ),

            const SizedBox(height: 8),

            // Información institucional
            const Text(
              'Aprendiendo Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 6),

            // Versión
            const Text(
              'Versión 1.0.0',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 11,
              ),
            ),

            const SizedBox(height: 4),

            // Derechos
            const Text(
              '© 2026 - Todos los derechos reservados',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required Color iconColor,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: iconColor.withOpacity(0.12),
          child: Icon(
            icon,
            color: iconColor,
            size: 26,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF1F2937),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF6B7280),
            ),
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Color(0xFF9CA3AF),
        ),
        onTap: onTap,
      ),
    );
  }
}