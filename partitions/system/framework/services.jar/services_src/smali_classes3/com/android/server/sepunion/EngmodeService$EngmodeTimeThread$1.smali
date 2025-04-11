.class public Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;
.super Ljava/util/TimerTask;
.source "EngmodeService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;->this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;->this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    iget-object v0, v0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmNeedUpdate(Lcom/android/server/sepunion/EngmodeService;Z)V

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;->this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmServerDate(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)V

    const-string p0, "engmode_service_time"

    const-string v0, "clear engmode service"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
