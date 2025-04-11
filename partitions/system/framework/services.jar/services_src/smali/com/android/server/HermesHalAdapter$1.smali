.class public Lcom/android/server/HermesHalAdapter$1;
.super Ljava/lang/Object;
.source "HermesHalAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesHalAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesHalAdapter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/server/HermesHalAdapter$1;->this$0:Lcom/android/server/HermesHalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter$1;->this$0:Lcom/android/server/HermesHalAdapter;

    invoke-static {v0}, Lcom/android/server/HermesHalAdapter;->-$$Nest$fgethc(Lcom/android/server/HermesHalAdapter;)Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
