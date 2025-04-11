.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$IntentListenerCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    return-void
.end method


# virtual methods
.method public final shouldInterceptIntent(Landroid/content/Intent;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->$r8$lambda$zcJICoaPx6QZxQ-k2lnSRdKG7ss(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
