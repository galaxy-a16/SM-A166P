.class public Lcom/samsung/android/powerSolution/powerSolution;
.super Lcom/samsung/android/powerSolution/IpowerSolution$Stub;
.source "powerSolution.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSOCjump:Lcom/samsung/android/powerSolution/SOCJump;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/powerSolution/IpowerSolution$Stub;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/powerSolution/powerSolution;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/samsung/android/powerSolution/SOCJump;->getInstance(Landroid/content/Context;)Lcom/samsung/android/powerSolution/SOCJump;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/powerSolution/powerSolution;->mSOCjump:Lcom/samsung/android/powerSolution/SOCJump;

    const-string/jumbo p0, "powerSolutinoService"

    const-string/jumbo p1, "onCreate: powerSolution Service Constructor called.."

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "\n[powerSolution Dump]"

    .line 44
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/powerSolution/powerSolution;->mSOCjump:Lcom/samsung/android/powerSolution/SOCJump;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/powerSolution/SOCJump;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
