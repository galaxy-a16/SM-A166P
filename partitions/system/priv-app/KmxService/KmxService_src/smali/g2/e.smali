.class public interface abstract annotation Lg2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lg2/e;
        as = Ljava/lang/Void;
        builder = Ljava/lang/Void;
        contentAs = Ljava/lang/Void;
        contentConverter = Lcom/fasterxml/jackson/databind/util/i;
        contentUsing = Lcom/fasterxml/jackson/databind/h;
        converter = Lcom/fasterxml/jackson/databind/util/i;
        keyAs = Ljava/lang/Void;
        keyUsing = Lcom/fasterxml/jackson/databind/p;
        using = Lcom/fasterxml/jackson/databind/h;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract as()Ljava/lang/Class;
.end method

.method public abstract builder()Ljava/lang/Class;
.end method

.method public abstract contentAs()Ljava/lang/Class;
.end method

.method public abstract contentConverter()Ljava/lang/Class;
.end method

.method public abstract contentUsing()Ljava/lang/Class;
.end method

.method public abstract converter()Ljava/lang/Class;
.end method

.method public abstract keyAs()Ljava/lang/Class;
.end method

.method public abstract keyUsing()Ljava/lang/Class;
.end method

.method public abstract using()Ljava/lang/Class;
.end method
