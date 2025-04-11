.class public final Lcom/fasterxml/jackson/core/io/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/fasterxml/jackson/core/io/a;


# instance fields
.field public final a:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/io/a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/a;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/a;->b:Lcom/fasterxml/jackson/core/io/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/a;->a:[[I

    return-void
.end method
