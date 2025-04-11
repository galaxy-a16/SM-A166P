.class public abstract Lcom/google/protobuf/r4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-class v0, Lcom/google/protobuf/q4;

    sget-object v1, Lcom/google/protobuf/q4;->e:Lcom/google/protobuf/q4;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/protobuf/r4;->a:Ljava/lang/Class;

    return-void
.end method
