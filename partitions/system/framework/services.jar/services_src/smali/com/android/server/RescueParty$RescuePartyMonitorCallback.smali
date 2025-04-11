.class public Lcom/android/server/RescueParty$RescuePartyMonitorCallback;
.super Ljava/lang/Object;
.source "RescueParty.java"

# interfaces
.implements Landroid/provider/DeviceConfig$MonitorCallback;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mrecordDeviceConfigAccess(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNamespaceUpdate(Ljava/lang/String;)V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->-$$Nest$smstartObservingPackages(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
