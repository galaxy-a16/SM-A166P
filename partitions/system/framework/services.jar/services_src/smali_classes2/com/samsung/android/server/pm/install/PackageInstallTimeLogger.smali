.class public final Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;
.super Ljava/lang/Object;
.source "PackageInstallTimeLogger.java"


# static fields
.field public static final ENABLE_SURVEY_MODE:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHistoricalInfo:Ljava/util/ArrayList;

.field public final mInstallLogging:Landroid/util/ArrayMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    return-void
.end method
