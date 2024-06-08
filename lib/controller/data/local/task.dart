import 'package:uuid/uuid.dart';
import 'package:wahid_chat_n_todolist/model/task.dart';

var tasksLocalData = [
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Membuat Presentasi Proyek',
    descTask:
        'Membuat presentasi yang komprehensif untuk proyek yang sedang berjalan, termasuk gambaran umum, tujuan, hasil yang diharapkan, timeline proyek, dan alokasi sumber daya. Pastikan untuk menyertakan diagram, grafik, dan statistik yang relevan untuk mendukung poin-poin utama.',
    targetTime: DateTime.now().add(const Duration(days: 3)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Meeting dengan Klien',
    descTask:
        'Mengadakan meeting dengan klien untuk membahas requirements proyek secara mendalam, termasuk kebutuhan fungsional dan non-fungsional, ekspektasi performa, batasan anggaran, dan timeline yang diharapkan. Persiapkan daftar pertanyaan dan catatan penting untuk memastikan semua aspek dibahas.',
    targetTime: DateTime.now().add(const Duration(days: 1)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Penelitian Pasar',
    descTask:
        'Melakukan penelitian pasar untuk produk baru, yang mencakup analisis pesaing, identifikasi tren pasar, kebutuhan dan preferensi konsumen, serta potensi peluang pasar. Hasil penelitian harus disusun dalam laporan yang menyeluruh dan disertai rekomendasi strategis.',
    targetTime: DateTime.now().add(const Duration(days: 5)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Desain UI/UX',
    descTask:
        'Membuat desain UI/UX yang intuitif dan menarik untuk aplikasi mobile, termasuk wireframe, mockup, dan prototipe interaktif. Pastikan desain memenuhi prinsip-prinsip kegunaan, aksesibilitas, dan estetika visual yang tinggi. Sertakan umpan balik pengguna untuk iterasi desain.',
    targetTime: DateTime.now().add(const Duration(days: 2)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Pengembangan Fitur Baru',
    descTask:
        'Mengembangkan fitur baru untuk platform web, termasuk perencanaan, pengkodean, pengujian, dan dokumentasi. Pastikan fitur tersebut terintegrasi dengan baik dengan sistem yang ada dan memenuhi kebutuhan pengguna. Sertakan panduan penggunaan untuk mempermudah adopsi.',
    targetTime: DateTime.now().add(const Duration(days: 4)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Uji Coba Produk',
    descTask:
        'Melakukan uji coba menyeluruh pada produk baru, termasuk pengujian fungsional, performa, keamanan, dan kompatibilitas. Buat laporan hasil uji coba yang mendetail dan identifikasi area yang perlu perbaikan sebelum peluncuran resmi.',
    targetTime: DateTime.now().add(const Duration(days: 6)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Menulis Dokumentasi Teknis',
    descTask:
        'Menulis dokumentasi teknis yang lengkap untuk sistem baru, mencakup arsitektur sistem, alur kerja, konfigurasi, dan panduan troubleshooting. Pastikan dokumentasi mudah dipahami dan mengikuti standar penulisan teknis yang baik.',
    targetTime: DateTime.now().add(const Duration(days: 8)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Pelatihan Tim',
    descTask:
        'Mengadakan pelatihan intensif untuk tim baru mengenai penggunaan alat dan teknologi yang digunakan dalam proyek. Sertakan sesi praktis dan materi pelatihan yang komprehensif untuk memastikan semua anggota tim memahami tugas dan tanggung jawab mereka.',
    targetTime: DateTime.now().add(const Duration(days: 7)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Perbaikan Bug',
    descTask:
        'Memperbaiki bug yang ditemukan pada sistem produksi, termasuk identifikasi akar penyebab, pengembangan solusi, dan pengujian perbaikan. Pastikan semua perubahan tercatat dengan baik dan tidak mempengaruhi fungsi lain dalam sistem.',
    targetTime: DateTime.now().add(const Duration(days: 3)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
  TaskModel(
    idTask: const Uuid().v4(),
    idUser: '1',
    nameTask: 'Analisis Data',
    descTask:
        'Melakukan analisis mendalam terhadap data operasional untuk laporan bulanan. Analisis harus mencakup tren kinerja, area yang perlu perbaikan, dan rekomendasi strategis berdasarkan temuan. Hasil analisis harus disajikan dalam format yang mudah dipahami oleh manajemen.',
    targetTime: DateTime.now().add(const Duration(days: 10)),
    statusTask: false,
    availableText: true,
    createTask: DateTime.now(),
  ),
];
