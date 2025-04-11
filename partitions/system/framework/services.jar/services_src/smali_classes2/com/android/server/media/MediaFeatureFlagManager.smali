.class public Lcom/android/server/media/MediaFeatureFlagManager;
.super Ljava/lang/Object;
.source "MediaFeatureFlagManager.java"


# static fields
.field public static final sInstance:Lcom/android/server/media/MediaFeatureFlagManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/server/media/MediaFeatureFlagManager;

    invoke-direct {v0}, Lcom/android/server/media/MediaFeatureFlagManager;-><init>()V

    sput-object v0, Lcom/android/server/media/MediaFeatureFlagManager;->sInstance:Lcom/android/server/media/MediaFeatureFlagManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/media/MediaFeatureFlagManager;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/server/media/MediaFeatureFlagManager;->sInstance:Lcom/android/server/media/MediaFeatureFlagManager;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    const-string/jumbo p0, "media_better_together"

    .line 64
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
