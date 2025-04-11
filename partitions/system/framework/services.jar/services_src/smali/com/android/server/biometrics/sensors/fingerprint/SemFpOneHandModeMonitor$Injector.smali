.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;
.super Ljava/lang/Object;
.source "SemFpOneHandModeMonitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isOneHandModeRunning(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isOneHandMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
