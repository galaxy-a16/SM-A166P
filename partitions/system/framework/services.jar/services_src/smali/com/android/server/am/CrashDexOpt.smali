.class public final Lcom/android/server/am/CrashDexOpt;
.super Ljava/lang/Object;
.source "CrashDexOpt.java"


# static fields
.field public static lock:Ljava/lang/Object;

.field public static mCrashPackage:Ljava/util/ArrayList;

.field public static mDexOptedPackage:Ljava/util/ArrayList;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetlock()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/CrashDexOpt;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/CrashDexOpt;->mCrashPackage:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/CrashDexOpt;->mDexOptedPackage:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/CrashDexOpt;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/android/server/am/CrashDexOpt;->mCrashPackage:Ljava/util/ArrayList;

    .line 63
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/android/server/am/CrashDexOpt;->mDexOptedPackage:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public start(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 224
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "Native crash"

    .line 226
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 227
    new-instance p2, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;

    sget-object p3, Lcom/android/server/am/CrashDexOpt$CrashKind;->NATIVE:Lcom/android/server/am/CrashDexOpt$CrashKind;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;-><init>(Lcom/android/server/am/CrashDexOpt;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CrashDexOpt$CrashKind;)V

    .line 228
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "java.lang.ClassNotFoundException"

    .line 229
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 230
    new-instance p2, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;

    sget-object p3, Lcom/android/server/am/CrashDexOpt$CrashKind;->JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;-><init>(Lcom/android/server/am/CrashDexOpt;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CrashDexOpt$CrashKind;)V

    .line 231
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
