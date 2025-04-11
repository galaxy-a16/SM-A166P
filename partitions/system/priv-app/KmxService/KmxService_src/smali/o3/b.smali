.class public abstract Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le3/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Le3/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le3/b;-><init>(I)V

    sput-object v0, Lo3/b;->a:Le3/b;

    new-instance v0, Le3/b;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Le3/b;-><init>(I)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "profile"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "email"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-void
.end method
