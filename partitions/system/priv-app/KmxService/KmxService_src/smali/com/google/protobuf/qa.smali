.class public abstract Lcom/google/protobuf/qa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/z7;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/google/protobuf/sa;->c:Lcom/google/protobuf/h3;

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static {}, Lcom/google/protobuf/Value;->getDefaultInstance()Lcom/google/protobuf/Value;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/z7;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/h3;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/Value;)V

    sput-object v4, Lcom/google/protobuf/qa;->a:Lcom/google/protobuf/z7;

    return-void
.end method
