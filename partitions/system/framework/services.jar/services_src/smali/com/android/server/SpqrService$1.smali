.class public Lcom/android/server/SpqrService$1;
.super Ljava/lang/Object;
.source "SpqrService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SpqrService;


# direct methods
.method public constructor <init>(Lcom/android/server/SpqrService;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/server/SpqrService$1;->this$0:Lcom/android/server/SpqrService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/server/SpqrService$1;->this$0:Lcom/android/server/SpqrService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/SpqrService;->-$$Nest$fputmService(Lcom/android/server/SpqrService;Landroid/os/ISpqrService;)V

    const-string v0, "SpqrService"

    const-string v1, "SPQR native service died; reconnecting"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/android/server/SpqrService$1;->this$0:Lcom/android/server/SpqrService;

    invoke-static {p0}, Lcom/android/server/SpqrService;->-$$Nest$mfindSpqrNativeService(Lcom/android/server/SpqrService;)V

    return-void
.end method
