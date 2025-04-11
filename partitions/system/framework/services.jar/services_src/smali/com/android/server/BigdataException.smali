.class Lcom/android/server/BigdataException;
.super Ljava/lang/Exception;
.source "HermesBigdataFunction.java"


# instance fields
.field private final err:Lcom/android/server/HermesBigdataFunction$BigdataError;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V
    .locals 1

    .line 383
    invoke-virtual {p1}, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/BigdataException;-><init>(Ljava/lang/String;Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/HermesBigdataFunction$BigdataError;)V
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 380
    iput-object p2, p0, Lcom/android/server/BigdataException;->err:Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-void
.end method


# virtual methods
.method public getErrCode()I
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/android/server/BigdataException;->err:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-virtual {p0}, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode()I

    move-result p0

    return p0
.end method
