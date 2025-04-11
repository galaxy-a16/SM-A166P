.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-static {p0, p1}, Lcom/android/server/PackageWatchdog;->$r8$lambda$2Pp61kAIaKJHNfxk50-M-sf4nR8(Lcom/android/server/PackageWatchdog;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
