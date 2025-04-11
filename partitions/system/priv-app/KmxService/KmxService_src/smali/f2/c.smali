.class public final Lf2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Class;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

.field public final f:Lcom/fasterxml/jackson/core/JsonToken;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf2/c;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Lf2/c;->c:Ljava/lang/Object;

    iput-object p1, p0, Lf2/c;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method
