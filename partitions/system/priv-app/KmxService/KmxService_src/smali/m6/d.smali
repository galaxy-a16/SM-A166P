.class public final Lm6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/recyclerview/widget/s0;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/s0;

    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/c0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/c0;-><init>(I)V

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/s0;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lm6/d;->b:Landroidx/recyclerview/widget/s0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/j;

    sget-object v1, Lm6/d;->b:Landroidx/recyclerview/widget/s0;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/j;-><init>(Landroidx/recyclerview/widget/s0;)V

    iput p1, p0, Lm6/d;->a:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
