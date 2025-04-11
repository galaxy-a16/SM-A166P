.class public abstract Lcom/google/protobuf/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/fb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/fb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/fb;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/protobuf/eb;->a:Lcom/google/protobuf/fb;

    return-void
.end method
