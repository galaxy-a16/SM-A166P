.class public Lcom/android/server/SEAMService$1;
.super Ljava/lang/Thread;
.source "SEAMService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method public constructor <init>(Lcom/android/server/SEAMService;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    invoke-static {v0}, Lcom/android/server/SEAMService;->-$$Nest$fgetmSKHandler(Lcom/android/server/SEAMService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/SEAMService$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/SEAMService$1$1;-><init>(Lcom/android/server/SEAMService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
