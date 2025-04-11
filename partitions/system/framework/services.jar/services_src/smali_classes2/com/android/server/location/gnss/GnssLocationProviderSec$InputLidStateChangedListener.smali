.class public Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;
.super Ljava/lang/Object;
.source "GnssLocationProviderSec.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 0

    .line 2707
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLidStateChanged(JI)V
    .locals 0

    .line 2711
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p1, p3}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$fputmLidState(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V

    .line 2712
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$fgetmLidState(Lcom/android/server/location/gnss/GnssLocationProviderSec;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2713
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onLidStateChanged "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$fgetmLidState(Lcom/android/server/location/gnss/GnssLocationProviderSec;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GnssLocationProvider_ex"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$InputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$fgetmLidState(Lcom/android/server/location/gnss/GnssLocationProviderSec;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->-$$Nest$msendLidState(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V

    :cond_0
    return-void
.end method
