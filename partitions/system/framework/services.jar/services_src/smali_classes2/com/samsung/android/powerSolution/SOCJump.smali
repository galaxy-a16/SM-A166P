.class public Lcom/samsung/android/powerSolution/SOCJump;
.super Ljava/lang/Object;
.source "SOCJump.java"


# static fields
.field public static mCurrentSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

.field public static mFileObject:Ljava/io/File;

.field public static mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

.field public static mSocjump:Lcom/samsung/android/powerSolution/SOCJump;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSocFilter:Landroid/content/IntentFilter;

.field public mSocJumpReciver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$smdateFormat(J)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/samsung/android/powerSolution/SOCJump;->dateFormat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/samsung/android/powerSolution/SOCJump$SOC;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/powerSolution/SOCJump$SOC;-><init>(I)V

    sput-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    const/4 v0, 0x0

    .line 135
    sput-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mSocjump:Lcom/samsung/android/powerSolution/SOCJump;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/samsung/android/powerSolution/SOCJump;->mContext:Landroid/content/Context;

    .line 145
    new-instance p1, Lcom/samsung/android/powerSolution/SOCJump$MyBroadcastReceiver;

    invoke-direct {p1}, Lcom/samsung/android/powerSolution/SOCJump$MyBroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocJumpReciver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/samsung/android/powerSolution/SOCJump;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocJumpReciver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static dateFormat(J)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "yyyy-MM-dd kk:mm:ss"

    .line 47
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/powerSolution/SOCJump;
    .locals 1

    .line 137
    sget-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mSocjump:Lcom/samsung/android/powerSolution/SOCJump;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/samsung/android/powerSolution/SOCJump;

    invoke-direct {v0, p0}, Lcom/samsung/android/powerSolution/SOCJump;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mSocjump:Lcom/samsung/android/powerSolution/SOCJump;

    .line 140
    :cond_0
    sget-object p0, Lcom/samsung/android/powerSolution/SOCJump;->mSocjump:Lcom/samsung/android/powerSolution/SOCJump;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p0, "[SOCJump]"

    .line 153
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 158
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    const-string v0, "/data/log/eSOC.txt"

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 159
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 173
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, p0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object v0, p2

    :goto_1
    move-object v1, v0

    :goto_2
    move-object p0, p1

    goto :goto_7

    :catch_3
    move-exception p1

    move-object p2, p0

    move-object v0, p2

    :goto_3
    move-object v1, v0

    :goto_4
    move-object p0, p1

    .line 167
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    if-eqz p2, :cond_2

    .line 173
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    .line 176
    :goto_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    return-void

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v1, :cond_4

    .line 170
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz p2, :cond_5

    .line 173
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v0, :cond_6

    .line 176
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 178
    :cond_6
    throw p0
.end method
