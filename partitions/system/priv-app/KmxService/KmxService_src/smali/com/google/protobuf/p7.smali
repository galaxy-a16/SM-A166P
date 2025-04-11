.class public abstract Lcom/google/protobuf/p7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/n7;

.field public static final b:Lcom/google/protobuf/o7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/n7;

    invoke-direct {v0}, Lcom/google/protobuf/n7;-><init>()V

    sput-object v0, Lcom/google/protobuf/p7;->a:Lcom/google/protobuf/n7;

    new-instance v0, Lcom/google/protobuf/o7;

    invoke-direct {v0}, Lcom/google/protobuf/o7;-><init>()V

    sput-object v0, Lcom/google/protobuf/p7;->b:Lcom/google/protobuf/o7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(JLjava/lang/Object;)V
.end method

.method public abstract b(JLjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract c(JLjava/lang/Object;)Ljava/util/List;
.end method
