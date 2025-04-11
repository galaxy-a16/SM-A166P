.class public Lcom/android/server/location/gnss/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$qua2Fj1zSKDVebVDFl50LsPWIFU(Lcom/android/server/location/gnss/GnssLocationProvider$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$4;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM_SLOT_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 673
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receive broadcast intent, action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GnssLocationProvider"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 679
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 682
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 683
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$fgetmSubscriptionManager(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    const/4 v1, 0x0

    .line 684
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 686
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    iput p1, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Get sim slot ID : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_2
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 690
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "persist.sys.gps.dds.subId"

    .line 689
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    new-instance p2, Lcom/android/server/location/gnss/GnssLocationProvider$4$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider$4;)V

    invoke-virtual {p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 693
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x1e

    if-le p1, p2, :cond_3

    .line 694
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 696
    :cond_3
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 697
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$mgetTimestamp(Lcom/android/server/location/gnss/GnssLocationProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": sim slot changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 696
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_4
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$msubscriptionOrCarrierConfigChanged(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    :goto_0
    return-void
.end method
