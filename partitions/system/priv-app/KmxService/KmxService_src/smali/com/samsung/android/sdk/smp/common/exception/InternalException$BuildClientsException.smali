.class public Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mErrorCode:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->mErrorCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$BuildClientsException;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method
