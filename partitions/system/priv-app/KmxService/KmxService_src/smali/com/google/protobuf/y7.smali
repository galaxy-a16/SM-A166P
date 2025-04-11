.class public final Lcom/google/protobuf/y7;
.super Lcom/google/protobuf/b8;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/protobuf/h3;

.field public final f:Lcom/google/protobuf/b4;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/h3;Lcom/google/protobuf/z7;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$FieldType;)V
    .locals 1

    iget-object v0, p2, Lcom/google/protobuf/z7;->a:Ljava/lang/Object;

    iget-object p2, p2, Lcom/google/protobuf/z7;->b:Ljava/lang/Object;

    invoke-direct {p0, p3, v0, p4, p2}, Lcom/google/protobuf/b8;-><init>(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/protobuf/y7;->e:Lcom/google/protobuf/h3;

    new-instance p1, Lcom/google/protobuf/b4;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/protobuf/b4;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/protobuf/y7;->f:Lcom/google/protobuf/b4;

    return-void
.end method
