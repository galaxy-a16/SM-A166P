.class public Lcom/android/server/location/provider/LocationProviderManager$4;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/PendingIntent;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;

    invoke-static {v0, v1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->access$1500(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method
