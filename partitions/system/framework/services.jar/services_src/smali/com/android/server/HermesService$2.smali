.class public Lcom/android/server/HermesService$2;
.super Ljava/lang/Thread;
.source "HermesService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HermesService$2;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/HermesService$2;->this$0:Lcom/android/server/HermesService;

    invoke-static {v0}, Lcom/android/server/HermesService;->-$$Nest$fgethalAdapter(Lcom/android/server/HermesService;)Lcom/android/server/HermesHalAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/HermesHalAdapter;->getBigdataLog()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/HermesService$2;->this$0:Lcom/android/server/HermesService;

    invoke-static {p0, v0}, Lcom/android/server/HermesService;->-$$Nest$msendBigData(Lcom/android/server/HermesService;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "HERMES#Service"

    const-string v0, "getBigdataLog is null, skip send bigdata."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
