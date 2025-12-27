ALTER TYPE "public"."card_activity_type" ADD VALUE 'card.updated.estimatedTime.added' BEFORE 'card.archived';--> statement-breakpoint
ALTER TYPE "public"."card_activity_type" ADD VALUE 'card.updated.estimatedTime.removed' BEFORE 'card.archived';--> statement-breakpoint
ALTER TYPE "public"."card_activity_type" ADD VALUE 'card.updated.estimatedTime.updated' BEFORE 'card.archived';--> statement-breakpoint
ALTER TABLE "card_activity" ADD COLUMN "fromEstimatedTime" integer DEFAULT 0;--> statement-breakpoint
ALTER TABLE "card_activity" ADD COLUMN "toEstimatedTime" integer DEFAULT 0;--> statement-breakpoint
ALTER TABLE "card_activity" DROP COLUMN IF EXISTS "estimatedTime";