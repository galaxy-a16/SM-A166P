.class public Lcom/android/server/location/provider/LocationProviderManager$3;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic val$listener:Landroid/location/ILocationListener;

.field public final synthetic val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationListener;Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$listener:Landroid/location/ILocationListener;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$listener:Landroid/location/ILocationListener;

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;

    invoke-static {v0, v1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1400(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method
