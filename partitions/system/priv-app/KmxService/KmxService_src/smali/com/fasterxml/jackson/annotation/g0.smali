.class public interface abstract annotation Lcom/fasterxml/jackson/annotation/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/annotation/g0;
        failOnRepeatedNames = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract failOnRepeatedNames()Z
.end method

.method public abstract value()[Lcom/fasterxml/jackson/annotation/f0;
.end method
