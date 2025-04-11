.class public Lcom/android/server/HermesService$1;
.super Ljava/lang/Thread;
.source "HermesService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesService;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    :try_start_0
    new-instance p0, Lcom/android/server/HermesBigdataFunction;

    invoke-direct {p0}, Lcom/android/server/HermesBigdataFunction;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction;->makeSkeymasterDumpstate()V

    .line 182
    invoke-static {}, Lcom/android/server/HermesService;->-$$Nest$smreportToDiagmon()V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction;->finishSkeymasterDumpstate()V
    :try_end_0
    .catch Lcom/android/server/BigdataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Some problem has occured, Err = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/BigdataException;->getErrCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HERMES#Service"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
