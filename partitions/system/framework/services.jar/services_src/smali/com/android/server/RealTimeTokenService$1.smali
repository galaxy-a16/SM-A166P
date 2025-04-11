.class public Lcom/android/server/RealTimeTokenService$1;
.super Ljava/util/TimerTask;
.source "RealTimeTokenService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public constructor <init>(Lcom/android/server/RealTimeTokenService;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$1;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "RealTimeTokenService"

    const-string v1, "Time up: Check all tokens"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$1;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->checkAllTokenExpiry()I

    return-void
.end method
