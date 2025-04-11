.class public Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;
.super Ljava/lang/Object;
.source "GnssListenerMultiplexer.java"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPermissionsChanged(I)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->-$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/gnss/GnssListenerMultiplexer;I)V

    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->-$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;)V

    return-void
.end method
