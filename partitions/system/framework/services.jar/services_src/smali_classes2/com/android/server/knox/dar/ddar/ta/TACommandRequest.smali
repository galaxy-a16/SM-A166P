.class public Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mOffset:I

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 37
    iput v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mOffset:I

    .line 39
    iput v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    .line 40
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    return-void
.end method


# virtual methods
.method public init(I[BI[B)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mVersion:I

    .line 57
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mMagicNum:[B

    .line 58
    iput p3, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    .line 59
    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 61
    array-length p2, p4

    iput p2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    goto :goto_0

    .line 63
    :cond_0
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 65
    :goto_0
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mOffset:I

    return-void
.end method
