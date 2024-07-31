import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAuth auth = FirebaseAuth.instance;

  String email = "email@gmail.com";
  String password = "123456";

  /* ======================== CADASTRO DE UM USUÁRIO ==========================
  * // APÓS CRIAÇÃO DO USUÁRIO A SESSÃO É INICIADA TAMBÉM.
  * auth.createUserWithEmailAndPassword(
  *     email: email,
  *     password: password
  * ).then((firebaseUser) {
  *   print("Sucesso ao criar um novo usuário! ${firebaseUser.user?.email}");
  * }).catchError((error) {
  *   print("Error: ${error.toString()}");
  * });
  *
  * User? sessionCurrent = auth.currentUser; // SESSÃO CRIADA APÓS CADASTRO
  * if (sessionCurrent != null) {
  *   print("Usuário logado: ${sessionCurrent?.email}");
  * } else {
  *   print("Usuário deslogado!");
  * }
  *
  * auth.signOut(); // DESLOGA O USUÁRIO DA SESSÃO ATUAL
  *
  * ======================== INICIAR SESSÃO ===================================
  *
  * auth.signInWithEmailAndPassword(
  *   email: email,
  *   password: password
  * ).then((data) {
  *   print("Logar com usuário: SUCESSO! Email: ${data.user?.email}");
  * }).catchError((error) {
  *   print("Logar com usuário: ERROR! Email: ${error.toString()}");
  * });
  *
  * */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


/*
  *
  * FirebaseFirestore _db = FirebaseFirestore.instance;
  * var COLLECTION = "usuarios";
  * var DOCUMENTO_ID = "001";
  * var data = {"Leonan": "009"};
  *
  * ================ CRIAR UM DOCUMENTO COM ID GERADO DE FORMA AUTOMÁTICA ======
  *
  * DocumentReference ref = await _db.collection(COLLECTION).add(data);
  * print("O ID do documento gerado é: ${ref.id}");
  *
  * ================ CRIAR/ATUALIZAR DOCUMENTO PASSANDO O DOCUMENTO ID ========
  *
  * _db.collection(COLLECTION).doc(DOCUMENTO_ID).set(data);
  *
  * ================ DELETAR COLEÇÃO COM O DOCUMENTO ID =======================
  *
  * _db.collection(COLLECTION).doc(DOCUMENTO_ID).delete();
  *
  * ================ PEGANDO OS DADOS COM DOCUMENTO ID UMA ÚNICA VEZ ==========
  *
  * DocumentSnapshot snapshot = await _db.collection(COLLECTION).doc(DOCUMENTO_ID).get();
  * print(snapshot.data());
  *
  * ================ PEGANDO A LISTA DE DADOS DE UMA COLEÇÃO ==================
  *
  * QuerySnapshot snapshot = await _db.collection(COLLECTION).get();
  *
  * snapshot.docs.forEach((item) { // LOOP COM FOREACH
  *  print(item.data());
  * });
  *
  * print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
  *
  * for (DocumentSnapshot item in snapshot.docs) { // LOOP CONVENCIONAL
  *  print(item.data());
  * }
  *
  * =============== PEGAR LISTA DE DOCUMENTOS COM OUVINTE =====================
  * // O SEGUINTE CÓDIGO IRÁ PEGAR A LISTA ATUAL DE DOCUMENTOS E FICARÁ
  * // ESCUTANDO AO FIREBASE, E QUANDO TIVER UMA MODIFICAÇÃO IRÁ PUXAR A LISTA
  * // NOVAMENTE COM OS DADOS ATUALIZADOS.
  *
  * _db
  * .collection(COLLECTION)
  * .snapshots()
  * .listen((data) {
  *  for (DocumentSnapshot item in data.docs) {
  *    print(item.data());
  *  }
  * });
  *
  * =============== BUSCANDO DADOS APLICANDO FILTROS E ORDENANDO ==============
  *
  * QuerySnapshot snapshot = await _db
  *    .collection(COLLECTION)
  *    // .where("nome", isEqualTo: "Rafael")
  *    // .where("idade", isGreaterThan: 20) // MAIOR QUE
  *    // .where("idade", isLessThan: 40) // MENOR QUE
  *    // .where("idade", isEqualTo: 20) // IGUAL A
  *    // .where("idade", isNotEqualTo: 20) // DIFERENTE DE
  *    // .where("idade", isNull: true) // IGUAL/DIFERENTE A/DE NULL
  *    .where("idade", isGreaterThanOrEqualTo: 20)
  *    .where("idade", isLessThanOrEqualTo: 40)
  *    .orderBy("idade", descending: true) // ASC = FALSE, DESC = TRUE
  *    .limit(1) // LIMITA A QUANTIDADE DE RESULTADOS
  *    .get();
  *
  * for (DocumentSnapshot item in snapshot.docs) { // LOOP CONVENCIONAL
  *   print(item.data());
  * }
  *
  * // OBS: AO ADD 2 ORDERBY COM COLUNAS DIFERENTES, DEVERÁ CRIAR UM INDICE COM
  * // O LINK QUE APARECERÁ NO CONSOLE, POIS SÓ ASSIM SERÁ POSSÍVEL.
  *
  * QuerySnapshot snapshot = await _db
  *    .collection(COLLECTION)
  *    .where("nome", isGreaterThanOrEqualTo: "r")
  *    .where("nome", isLessThanOrEqualTo: "r" + "\uf8ff")
  *    .get(); // IRÁ PESQUISAR POR NOMES QUE COMECEM COM R
  * */
