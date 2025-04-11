.class public Lcom/android/server/am/TrafficStateDatabaseController$TrafficStatsTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "TrafficStateDatabaseController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "PhysicalChannelConfigChanged"

    .line 359
    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smbandFromCP()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$sfputbandNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
