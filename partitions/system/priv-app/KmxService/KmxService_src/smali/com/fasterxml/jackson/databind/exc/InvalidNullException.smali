.class public Lcom/fasterxml/jackson/databind/exc/InvalidNullException;
.super Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _propertyName:Lcom/fasterxml/jackson/databind/PropertyName;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/g;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;-><init>(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidNullException;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/fasterxml/jackson/databind/util/h;->a:[Ljava/lang/annotation/Annotation;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "<UNKNOWN>"

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v3, "\"%s\""

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    const-string v0, "Invalid `null` value encountered for property %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;

    invoke-direct {v1, p0, v0, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/PropertyName;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->setTargetType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object p0
.end method
