.class public Lcom/android/server/notification/sec/DisplayToast;
.super Ljava/lang/Object;
.source "DisplayToast.java"


# static fields
.field public static sLogMsg:Lcom/android/server/notification/sec/DisplayToast;


# instance fields
.field public logList:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mMessage:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mUid:I

.field public outputContents:Ljava/lang/StringBuffer;

.field public sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method public static bridge synthetic -$$Nest$fgetlogList(Lcom/android/server/notification/sec/DisplayToast;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/notification/sec/DisplayToast;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/sec/DisplayToast;->dump()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/android/server/notification/sec/DisplayToast;

    invoke-direct {v0}, Lcom/android/server/notification/sec/DisplayToast;-><init>()V

    sput-object v0, Lcom/android/server/notification/sec/DisplayToast;->sLogMsg:Lcom/android/server/notification/sec/DisplayToast;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->outputContents:Ljava/lang/StringBuffer;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/android/server/notification/sec/DisplayToast;->sLogMsg:Lcom/android/server/notification/sec/DisplayToast;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/notification/sec/DisplayToast;->outFile(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dump()V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/server/notification/sec/DisplayToast$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/sec/DisplayToast$1;-><init>(Lcom/android/server/notification/sec/DisplayToast;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final outFile(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mPackageName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    .line 79
    iput p3, p0, Lcom/android/server/notification/sec/DisplayToast;->mUid:I

    .line 80
    iput-object p4, p0, Lcom/android/server/notification/sec/DisplayToast;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 83
    iget-object p3, p0, Lcom/android/server/notification/sec/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/DisplayToast;->sendIntentForToastDumpLog(Ljava/lang/String;)V

    return-void
.end method

.method public final sendIntentForToastDumpLog(Ljava/lang/String;)V
    .locals 3

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.action.ACTION_TOAST_DUMP_LOG"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sem_toast_date"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "sem_toast_caller_pkg"

    .line 146
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "sem_toast_caller_uid"

    .line 147
    iget v1, p0, Lcom/android/server/notification/sec/DisplayToast;->mUid:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget-object p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x63

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string/jumbo v1, "sem_toast_message"

    .line 153
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/sec/DisplayToast;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ToastLog"

    const-string/jumbo v0, "sendBroadcast fails!!"

    .line 158
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
