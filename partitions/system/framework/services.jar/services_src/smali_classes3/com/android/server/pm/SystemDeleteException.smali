.class final Lcom/android/server/pm/SystemDeleteException;
.super Ljava/lang/Exception;
.source "SystemDeleteException.java"


# instance fields
.field final mReason:Lcom/android/server/pm/PackageManagerException;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/server/pm/SystemDeleteException;->mReason:Lcom/android/server/pm/PackageManagerException;

    return-void
.end method
