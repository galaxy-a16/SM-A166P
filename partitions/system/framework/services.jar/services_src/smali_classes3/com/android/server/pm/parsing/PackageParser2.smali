.class public Lcom/android/server/pm/parsing/PackageParser2;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final LOG_PARSE_TIMINGS:Z


# instance fields
.field public mCacher:Lcom/android/server/pm/parsing/PackageCacher;

.field public mSharedAppInfo:Ljava/lang/ThreadLocal;

.field public mSharedResult:Ljava/lang/ThreadLocal;

.field public parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;


# direct methods
.method public static synthetic $r8$lambda$Rh0rXb_bSsmbBUddYRVT3lTACm4(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$1(Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TyuePyUPnrrxyGine9B9PVPKaBM()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$0()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$wJ5RQfmA6u_C5mkZkTAKrvEySIo(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 95
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;-><init>()V

    .line 99
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    if-nez p2, :cond_0

    .line 115
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 116
    invoke-virtual {p2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 119
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/permission/PermissionManager;

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 122
    invoke-virtual {v0}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0

    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    .line 124
    :cond_1
    new-instance v1, Lcom/android/server/pm/parsing/PackageCacher;

    invoke-direct {v1, p3}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    move-object p3, v1

    :goto_0
    iput-object p3, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    .line 126
    new-instance p3, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    invoke-direct {p3, p1, p2, v0, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    iput-object p3, p0, Lcom/android/server/pm/parsing/PackageParser2;->parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    .line 129
    new-instance p1, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p4}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    .line 137
    new-instance p2, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    invoke-static {p2}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static forParsingFileWithDefaults()Lcom/android/server/pm/parsing/PackageParser2;
    .locals 3

    const-string/jumbo v0, "platform_compat"

    .line 68
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/android/server/pm/parsing/PackageParser2;

    new-instance v2, Lcom/android/server/pm/parsing/PackageParser2$1;

    invoke-direct {v2, v0}, Lcom/android/server/pm/parsing/PackageParser2$1;-><init>(Lcom/android/internal/compat/IPlatformCompat;)V

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, v0, v2}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    return-object v1
.end method

.method public static synthetic lambda$new$0()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 100
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const/4 v1, -0x1

    .line 101
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return-object v0
.end method

.method private synthetic lambda$new$1(Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 132
    iput-object p4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 133
    iput p5, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 134
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;
    .locals 1

    .line 137
    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-direct {v0, p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 196
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 7

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    aget-object p1, v0, v1

    :cond_0
    if-eqz p3, :cond_1

    .line 152
    iget-object p3, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    if-eqz p3, :cond_1

    .line 153
    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCachedResult(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p3

    if-eqz p3, :cond_1

    return-object p3

    .line 159
    :cond_1
    sget-boolean p3, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v0

    .line 160
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-virtual {v4}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v4

    .line 161
    iget-object v5, p0, Lcom/android/server/pm/parsing/PackageParser2;->parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    invoke-virtual {v5, v4, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 162
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-nez v5, :cond_6

    .line 167
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    if-eqz p3, :cond_3

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 170
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    if-eqz p0, :cond_4

    .line 171
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/pm/parsing/PackageCacher;->cacheResult(Ljava/io/File;ILcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    :cond_4
    if-eqz p3, :cond_5

    sub-long p2, v0, v2

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    add-long v0, p2, v2

    const-wide/16 v5, 0x64

    cmp-long p0, v0, v5

    if-lez p0, :cond_5

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse times for \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\': parse="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, update_cache="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageParsing"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v4

    .line 163
    :cond_6
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p1

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
