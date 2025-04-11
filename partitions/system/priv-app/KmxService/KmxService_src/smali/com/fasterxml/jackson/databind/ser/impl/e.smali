.class public final Lcom/fasterxml/jackson/databind/ser/impl/e;
.super Lcom/fasterxml/jackson/databind/ser/impl/i;
.source "SourceFile"


# static fields
.field public static final b:Lcom/fasterxml/jackson/databind/ser/impl/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/e;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/ser/impl/e;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/i;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/g;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
