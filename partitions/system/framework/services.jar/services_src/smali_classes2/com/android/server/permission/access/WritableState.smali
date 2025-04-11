.class public abstract Lcom/android/server/permission/access/WritableState;
.super Ljava/lang/Object;
.source "AccessState.kt"


# instance fields
.field public writeMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic requestWrite$default(Lcom/android/server/permission/access/WritableState;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/WritableState;->requestWrite(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: requestWrite"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getWriteMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/permission/access/WritableState;->writeMode:I

    return p0
.end method

.method public final requestWrite(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/android/server/permission/access/WritableState;->writeMode:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/permission/access/WritableState;->writeMode:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/permission/access/WritableState;->writeMode:I

    :cond_1
    :goto_0
    return-void
.end method
