.class public Lcom/android/server/am/BinderTransaction;
.super Ljava/lang/Object;
.source "BinderTransaction.java"


# static fields
.field public static LOG_ERROR_HEADER:Ljava/lang/String;

.field public static LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

.field public static LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

.field public static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

.field public static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

.field public static LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

.field public static LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

.field public static LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

.field public static LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

.field public static LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

.field public static sBinderPattern:Ljava/util/regex/Pattern;


# direct methods
.method public static bridge synthetic -$$Nest$mfindBinderTransactions(Lcom/android/server/am/BinderTransaction;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BinderTransaction;->findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeBinderTransactionsErrorLog(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeBinderTransactionsLogFooter(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeBinderTransactionsLogHeader(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mseparatePidsByProcessType(Lcom/android/server/am/BinderTransaction;Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BinderTransaction;->separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    const-string v0, "ERROR: "

    .line 59
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    const-string v0, "failed to get the binder transaction info of pid "

    .line 60
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    const-string v0, "failed to get the process types, stack traces will not be added"

    .line 62
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    const-string v0, "failed to get whole binder transaction info from pid "

    .line 64
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    const-string v0, "binder proc file not exist. drop pid "

    .line 66
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    const-string v0, "binder proc file is not readable. drop pid "

    .line 68
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    const-string v0, "binder proc file not found. drop pid "

    .line 70
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    const-string v0, "binder proc file io error. drop pid "

    .line 72
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    const-string v0, "could not get the pid of zygote"

    .line 74
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    const-string v0, "could not get the process type. drop pid "

    .line 76
    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    .line 190
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BinderTransaction;->getBinderProcFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v9, 0x0

    const-string v10, "BinderTransaction"

    if-nez v1, :cond_1

    const-string v0, "Binder proc file not exist."

    .line 197
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v9

    .line 202
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_a

    :cond_2
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 214
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 215
    :try_start_1
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    :try_start_2
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 219
    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 220
    invoke-virtual {p0, v3}, Lcom/android/server/am/BinderTransaction;->matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 222
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BinderTransaction;->parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 241
    :cond_4
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 244
    :catch_0
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 247
    :catch_1
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v1, v14

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v1, v14

    goto/16 :goto_7

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v14, v1

    goto :goto_1

    :catch_7
    move-exception v0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v13, v1

    goto/16 :goto_9

    :catch_8
    move-exception v0

    move-object v13, v1

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v13, v1

    move-object v14, v13

    :goto_1
    move-object v1, v12

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v13, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v12, v1

    move-object v13, v12

    goto/16 :goto_9

    :catch_b
    move-exception v0

    move-object v12, v1

    move-object v13, v12

    :goto_2
    :try_start_7
    const-string v2, "Unexpected error during binder proc file processing."

    .line 237
    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v1, :cond_5

    .line 241
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    :catch_c
    :cond_5
    if-eqz v13, :cond_6

    .line 244
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    :catch_d
    :cond_6
    if-eqz v12, :cond_7

    .line 247
    :goto_3
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    :catch_e
    :cond_7
    :goto_4
    move v9, v11

    goto/16 :goto_8

    :catch_f
    move-exception v0

    move-object v13, v1

    move-object v14, v13

    :goto_5
    :try_start_b
    const-string v2, "Binder proc file read io error."

    .line 231
    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v14, :cond_8

    .line 241
    :try_start_c
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    :catch_10
    :cond_8
    if-eqz v13, :cond_9

    .line 244
    :try_start_d
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    :catch_11
    :cond_9
    if-eqz v1, :cond_7

    .line 247
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v12, v1

    :goto_6
    move-object v1, v14

    goto :goto_9

    :catch_12
    move-exception v0

    move-object v12, v1

    move-object v13, v12

    :goto_7
    :try_start_f
    const-string v2, "Binder proc file not found. "

    .line 226
    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v1, :cond_a

    .line 241
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_13

    :catch_13
    :cond_a
    if-eqz v13, :cond_b

    .line 244
    :try_start_11
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14

    :catch_14
    :cond_b
    if-eqz v12, :cond_7

    goto :goto_3

    :catch_15
    :goto_8
    xor-int/lit8 v0, v9, 0x1

    return v0

    :catchall_4
    move-exception v0

    :goto_9
    if-eqz v1, :cond_c

    .line 241
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_16

    :catch_16
    :cond_c
    if-eqz v13, :cond_d

    .line 244
    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17

    :catch_17
    :cond_d
    if-eqz v12, :cond_e

    .line 247
    :try_start_14
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_18

    .line 249
    :catch_18
    :cond_e
    throw v0

    :cond_f
    :goto_a
    const-string v0, "Binder proc file is not readable."

    .line 203
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v9
.end method

.method public getBinderProcFileName(I)Ljava/lang/String;
    .locals 1

    .line 345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/dev/binderfs/binder_logs/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 346
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 350
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .locals 6

    const-string v0, "BinderTransaction"

    .line 109
    new-instance v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v1}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    .line 111
    new-instance v2, Lcom/android/server/am/BinderTransaction$1;

    const-string v3, "BinderProcsCollector"

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/android/server/am/BinderTransaction$1;-><init>(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;I)V

    .line 148
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v3, 0x7530

    const/4 v5, 0x0

    .line 151
    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 152
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ERROR! binderProc thread timed out! failed to get binder info."

    .line 154
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 162
    throw p0

    :catch_0
    const-string v2, "ERROR! binderProc thread has interrupted!"

    .line 160
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    new-instance v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v1}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    .line 176
    iget-object v0, v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, v1, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v1
.end method

.method public getParentPid(I)I
    .locals 0

    .line 358
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result p0

    return p0
.end method

.method public getPidsForCommands([Ljava/lang/String;)[I
    .locals 0

    .line 354
    invoke-static {p1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProcessTypeOfPid(I[I)I
    .locals 3

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->getParentPid(I)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_2

    .line 311
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v2, p2, v1

    if-ne p0, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method

.method public final makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makeBinderTransactionsLogFooter(I)Ljava/lang/String;
    .locals 1

    .line 330
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----- end binder transactions "

    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -----"

    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makeBinderTransactionsLogHeader(I)Ljava/lang/String;
    .locals 1

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----- binder transactions from pid "

    .line 323
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -----"

    .line 325
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 0

    .line 255
    sget-object p0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public final parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 p0, 0x1

    .line 262
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 264
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 267
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "outgoing"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p4, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 272
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .locals 6

    const-string/jumbo v0, "zygote"

    const-string/jumbo v1, "zygote64"

    .line 281
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "BinderTransaction"

    if-eqz v0, :cond_4

    .line 283
    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 293
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/am/BinderTransaction;->getProcessTypeOfPid(I[I)I

    move-result v4

    if-nez v4, :cond_1

    .line 295
    iget-object v3, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->javaPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v4, v3, :cond_2

    .line 297
    iget-object v3, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->nativePids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get the process type. drop pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v3, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_1
    const-string p1, "Could not get the pid of zygote."

    .line 284
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method
