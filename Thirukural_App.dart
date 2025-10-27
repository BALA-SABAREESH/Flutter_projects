import 'package:flutter/material.dart';

void main() {
  runApp(const ThirukkuralApp());
}

class ThirukkuralApp extends StatefulWidget {
  const ThirukkuralApp({super.key});

  @override
  State<ThirukkuralApp> createState() => _ThirukkuralAppState();
}

class _ThirukkuralAppState extends State<ThirukkuralApp>
    with SingleTickerProviderStateMixin {
  bool isDark = false;
  bool translateToEnglish = false;

  final String _kuralLine1 = 'அகர முதல எழுத்தெல்லாம் ஆதி';
  final String _kuralLine2 = 'பகவன் முதற்றே உலகு.';

  final String _explanationTamil =
      'அகரம் எல்லா எழுத்துகளுக்கும் முதல்; அதேபோல் இறைவன் உலகத்திற்கும் முதன்மை. இறைவனை நினைத்து வாழ்தல் இடையே புகழ்.';
  final String _storyTamil =
      'ஒரு சிறுவன் ஆசிரியரிடம், "எழுத்துக்களில் முதன்மை எது?" என்றான். ஆசிரியர் "அகரம்" என்று எடுத்துக்காட்டினார் மற்றும் இறைவனை முதலில் நினைக்க வேண்டும் என்று சொன்னார். அதன் பின் சிறுவன் ஒவ்வென்றும் செயலுக்கு முன் இறைவனை நினைப்பான்.';

  final String _explanationEnglish =
      '“A” (Agar) is the beginning of all letters. In the same way, God is the first and foremost in the world. Remembering God before actions brings honor and right conduct.';
  final String _storyEnglish =
      'A boy once asked his teacher which letter is most important. The teacher pointed to "Agar" and explained that just as letters begin with “A”, we should begin deeds by remembering the Divine. From then on the boy began to think of God before every action.';

  late final AnimationController _bgController;
  late final Animation<double> _bgAnimation;

  @override
  void initState() {
    super.initState();
    _bgController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat(reverse: true);

    _bgAnimation = Tween<double>(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(parent: _bgController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _bgController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final accentColor = isDark ? Colors.orange[200] : Colors.brown;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thirukkural App',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.brown,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.brown,
      ),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'அகரம் முதல் அறம் வரை',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          actions: [
            IconButton(
              tooltip: translateToEnglish ? 'Show Tamil' : 'Translate (EN)',
              icon: Icon(
                Icons.translate,
                color: translateToEnglish ? Colors.amber : null,
              ),
              onPressed: () {
                setState(() => translateToEnglish = !translateToEnglish);
              },
            ),
            IconButton(
              tooltip: isDark ? 'Light mode' : 'Dark mode',
              icon: Icon(isDark ? Icons.wb_sunny : Icons.nightlight_round),
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: SizedBox.expand(
          // ✅ Ensures full screen background
          child: Stack(
            children: [
              // ✅ Animated gradient background full screen
              Positioned.fill(
                child: AnimatedBuilder(
                  animation: _bgAnimation,
                  builder: (context, child) {
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange.withOpacity(0.6),
                            Colors.purple.withOpacity(0.6),
                          ],
                          begin: Alignment(-1 + _bgAnimation.value, -1),
                          end: Alignment(1 - _bgAnimation.value, 1),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Overlay
              Positioned.fill(
                child: Container(
                  color: isDark
                      ? Colors.black.withOpacity(0.45)
                      : Colors.white.withOpacity(0.10),
                ),
              ),

              // Scrollable content
              SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Kural App',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffb24bbf)),
                    ),

                    const SizedBox(height: 16),

                    // Kural card
                    Center(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 720),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 16),
                        decoration: BoxDecoration(
                          color: isDark
                              ? Colors.grey[850]!.withOpacity(0.95)
                              : Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.22),
                              blurRadius: 8,
                              offset: const Offset(2, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'திருக்குறள்: 1',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'அதிகாரம்: 1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'கடவுள் வாழ்த்து',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: accentColor,
                              ),
                            ),
                            const SizedBox(height: 18),
                            Text(
                              '${_kuralLine1}\n${_kuralLine2}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.4,
                                color: isDark ? Colors.white : Colors.black87,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 26),

                    // Explanation
                    Container(
                      constraints: const BoxConstraints(maxWidth: 720),
                      decoration: BoxDecoration(
                        color: isDark
                            ? Colors.grey[900]!.withOpacity(0.92)
                            : Colors.white.withOpacity(0.92),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isDark ? Colors.white12 : Colors.black12,
                        ),
                      ),
                      child: ExpansionTile(
                        collapsedIconColor:
                            isDark ? Colors.white70 : Colors.black54,
                        iconColor: isDark ? Colors.white70 : Colors.black54,
                        title: Text(
                          translateToEnglish ? 'Explanation' : 'விளக்கம்',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        childrenPadding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10),
                        children: [
                          Text(
                            translateToEnglish
                                ? _explanationEnglish
                                : _explanationTamil,
                            style: const TextStyle(fontSize: 16, height: 1.5),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Story
                    Container(
                      constraints: const BoxConstraints(maxWidth: 720),
                      decoration: BoxDecoration(
                        color: isDark
                            ? Colors.grey[900]!.withOpacity(0.92)
                            : Colors.white.withOpacity(0.92),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isDark ? Colors.white12 : Colors.black12,
                        ),
                      ),
                      child: ExpansionTile(
                        collapsedIconColor:
                            isDark ? Colors.white70 : Colors.black54,
                        iconColor: isDark ? Colors.white70 : Colors.black54,
                        title: Text(
                          translateToEnglish ? 'Story' : 'கதை',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        childrenPadding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10),
                        children: [
                          Text(
                            translateToEnglish ? _storyEnglish : _storyTamil,
                            style: const TextStyle(fontSize: 16, height: 1.5),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 36),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
