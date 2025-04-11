.class public final Lcom/fasterxml/jackson/databind/deser/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field public final b:Lcom/fasterxml/jackson/databind/jsontype/g;

.field public final c:Ljava/lang/String;

.field public d:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->a:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->b:Lcom/fasterxml/jackson/databind/jsontype/g;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/g;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d;->c:Ljava/lang/String;

    return-void
.end method
