.class public final Lcom/google/protobuf/i3;
.super Lcom/google/protobuf/q3;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/protobuf/p3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/p3;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    iput-object p3, p0, Lcom/google/protobuf/i3;->c:Lcom/google/protobuf/p3;

    iput-object p2, p0, Lcom/google/protobuf/i3;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/protobuf/i3;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/p3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/i3;->c:Lcom/google/protobuf/p3;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/i3;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/i3;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/n8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/i3;->c:Lcom/google/protobuf/p3;

    iget-object p0, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method
