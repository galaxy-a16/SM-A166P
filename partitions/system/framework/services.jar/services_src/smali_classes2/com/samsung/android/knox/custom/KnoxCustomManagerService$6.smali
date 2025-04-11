.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 10679
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 10682
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherHandler(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10683
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 10685
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherHandler(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
