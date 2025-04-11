.class public Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;
.super Ljava/lang/Object;
.source "GnssListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

.field public final synthetic val$callerIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final synthetic val$listener:Landroid/os/IInterface;

.field public final synthetic val$request:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Landroid/os/IInterface;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$listener:Landroid/os/IInterface;

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$request:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$callerIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$listener:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$request:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$callerIdentity:Landroid/location/util/identity/CallerIdentity;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$3;->val$listener:Landroid/os/IInterface;

    invoke-virtual {v2, v3, v4, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->access$000(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method
