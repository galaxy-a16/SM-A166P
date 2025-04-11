.class public abstract Lcom/fasterxml/jackson/databind/cfg/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/fasterxml/jackson/core/Version;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "jackson-databind"

    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/l;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/j;->a:Lcom/fasterxml/jackson/core/Version;

    return-void
.end method
