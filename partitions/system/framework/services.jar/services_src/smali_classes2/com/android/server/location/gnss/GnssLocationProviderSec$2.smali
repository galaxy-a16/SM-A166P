.class public Lcom/android/server/location/gnss/GnssLocationProviderSec$2;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "GnssLocationProviderSec.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfo(Ljava/util/List;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellInfo updated. cellInfo size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$mgetTypeFromNetworkType(Lcom/android/server/location/gnss/GnssLocationProviderSec;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 488
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 489
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "registered cell found"

    .line 490
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 492
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 495
    :cond_3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0, v0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$msetReferenceLocation(Lcom/android/server/location/gnss/GnssLocationProviderSec;ILandroid/telephony/CellInfo;)V

    nop

    :cond_4
    :goto_1
    return-void
.end method
