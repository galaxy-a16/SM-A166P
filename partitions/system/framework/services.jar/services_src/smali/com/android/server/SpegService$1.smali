.class public Lcom/android/server/SpegService$1;
.super Ljava/lang/Object;
.source "SpegService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SpegService;


# direct methods
.method public constructor <init>(Lcom/android/server/SpegService;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/server/SpegService$1;->this$0:Lcom/android/server/SpegService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/server/SpegService$1;->this$0:Lcom/android/server/SpegService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/SpegService;->-$$Nest$fputmService(Lcom/android/server/SpegService;Landroid/os/ISpegHelperService;)V

    const-string v0, "SpegService"

    const-string/jumbo v1, "speg_helper died; reconnecting"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/android/server/SpegService$1;->this$0:Lcom/android/server/SpegService;

    invoke-static {p0}, Lcom/android/server/SpegService;->-$$Nest$mfindSpegHelperService(Lcom/android/server/SpegService;)V

    return-void
.end method
