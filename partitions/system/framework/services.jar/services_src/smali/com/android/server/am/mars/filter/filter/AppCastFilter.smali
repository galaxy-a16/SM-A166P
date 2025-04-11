.class public Lcom/android/server/am/mars/filter/filter/AppCastFilter;
.super Ljava/lang/Object;
.source "AppCastFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final URI_APP_CAST_ENABLED:Landroid/net/Uri;

.field public static final URI_APP_CAST_PACKAGE:Landroid/net/Uri;


# instance fields
.field public mAppCastEnabledObserver:Landroid/database/ContentObserver;

.field public mAppCastPackage:Ljava/lang/String;

.field public mAppCastPackageObserver:Landroid/database/ContentObserver;

.field public mContext:Landroid/content/Context;

.field public mIsAppCastEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fputmAppCastPackage(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsAppCastEnabled(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetValueFromSmartMirroring(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->getValueFromSmartMirroring(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetURI_APP_CAST_ENABLED()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetURI_APP_CAST_PACKAGE()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->TAG:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.smartmirroring/app_cast_sent_result"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.smartmirroring/app_cast_sent_top_package"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Landroid/database/ContentObserver;

    .line 22
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Landroid/database/ContentObserver;

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    .line 25
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/AppCastFilter;
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->unregisterContentObserver()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 50
    iget-boolean p2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    if-eqz p2, :cond_0

    .line 51
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getValueFromSmartMirroring(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->registerContentObserver()V

    return-void
.end method

.method public final registerContentObserver()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Landroid/database/ContentObserver;

    .line 71
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/mars/filter/filter/AppCastFilter$2;-><init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Landroid/database/ContentObserver;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final unregisterContentObserver()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Landroid/database/ContentObserver;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Landroid/database/ContentObserver;

    :cond_1
    return-void
.end method
